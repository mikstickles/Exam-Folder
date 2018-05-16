<?php


	// Login info for connecting to the database

	/*
	 * Fill in your username and password accordingly, and update your port number.
	 */
	$db['host'] = "localhost:3306";
  	$db['user'] = "root";
  	$db['password'] = "";
  	$db['db'] = "time";

  	$conn = new mysqli($db['host'], $db['user'], $db['password'], $db['db']);
		// if ($conn->ping()) {
    // echo ("Our connection is ok!\n");
		// }

	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	// retrieve data passed through post method
	$input = json_decode(file_get_contents("php://input"));

	//
	if (!empty((array)$input)) {
	//
	// 	///////////////////////////
	// 	/// GET PENDING STUDENTS - Example
	// 	///////////////////////////
	// 	if ($input->action == "getDashInfo") {
	// 		$out = array();
	//
	// 		// Fetch nr PENDING students
	// 		$sql = "SELECT COUNT(*) AS 'Pending' FROM `students` WHERE `Status` = 'Pending' ";
	// 		$result = $conn->query($sql);
	// 		if ($result->num_rows == 1) {
	// 			$row = $result->fetch_assoc();
	// 			$out["SPending"] = $row["Pending"];
	// 		}
	//
	// 		// Can echo the variable
	// 		echo json_encode($out);
	// 	}
	//
	// 	///////////////////////////
	// 	/// GET ALL TUTORS
	// 	///////////////////////////
		if ( $input->action == "getTutors" ) {
			// TODO: Implement Task 2.1 - Get all the tutors info
			//ORDER BY
			$query = "SELECT Users.User_ID, Users.Name, users.Surname, users.Email, users.PhoneNumber, tutors.WorkStartDate, tutors.DateOfBirth, tutors.Status, tutors.Tutor_ID
								FROM users
								INNER JOIN tutors ON users.User_ID = tutors.User_ID ORDER BY tutors.PreferredGrade_Start, users.Surname;";
			$result = $conn->query($query);

			if(!$result){
				trigger_error("Invalid Query: " . $conn->error);
			}

			if($result->num_rows > 0){
				$i = 0;
				while($tutor = $result->fetch_assoc()){
					$resp['tutors'][] = array(
            'name' => $tutor['Name'],
            'surname' => $tutor['Surname'],
						'email' => $tutor['Surname'],
						'PhoneNumber' => $tutor['PhoneNumber'],
						'DateOfBirth' => $tutor['DateOfBirth'],
						'Status' => $tutor['Status'],
        	);

					$tutorslots = "SELECT * FROM tutorslots WHERE Tutor_ID = " . $tutor['Tutor_ID'];
					$resultThree = $conn->query($tutorslots);
					$resp['tutors'][$i]['slots'] = array();
					while($slots = $resultThree->fetch_assoc()){
						$resp['tutors'][$i]['slots'][] = array(
							'Day' => $slots['Day']
						);
					}
					$i++;
				}
			}

			$resultCheck = mysqli_num_rows($result);

			if ($resultCheck > 0) {
				while ($row = mysqli_fetch_assoc($result)) {
					echo $row['user_id'] . "<br/>";
				}
			}

			echo json_encode($resp);
			die;
		}


		///////////////////////////
		/// GET ABSENTEES
		///////////////////////////
		if ( $input->action == "getAbsentees" ) {
			// TODO: Implement Task 2.2 - Get all absentees info
			$query = "SELECT students.Parent, students.Name, students.Grade, students.PackageTime_ID, students.GroupID, absentees.Date
								FROM students
								INNER JOIN absentees ON students.Student_ID = absentees.Student_ID ORDER BY absentees.Date DESC";
			$result = $conn->query($query);

			if(!$result){
				trigger_error("Invalid Query: " . $conn->error);
			}

			if($result->num_rows > 0){
				$i = 0;
				$resp = array();
				while($absent = $result->fetch_assoc()){

			$resp['absentees'][] = array(
				'Date' => $absent['Date'],
				'Name' => $absent['Name'],
				'Grade' => $absent['Grade'],
				'GroupID' => $absent['GroupID']
			);

			$absentChild = "SELECT Surname FROM users WHERE User_ID = " . $absent['Parent'];
			$resultFour = $conn->query($absentChild);

			while($parentSur = $resultFour->fetch_assoc()){
			$resp['absentees'][$i]['Surname'] = $parentSur['Surname'];
			}

			$packageChild = "SELECT Package_ID FROM packagetimes WHERE PackageTime_ID = " . $absent['PackageTime_ID'];
			$resultFive = $conn->query($packageChild);

			while($pTime = $resultFive->fetch_assoc()){
			$resp['absentees'][$i]['Package_ID'] = $pTime['Package_ID'];
			}

			$i++;
		}}

			echo json_encode($resp);
			die;
		}
	}

	$conn->close();

?>
