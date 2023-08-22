<?php
class Model
{
    private $server = "localhost";
    private $username = "root";
    private $password = "";
    private $db = "aas";
    private $conn;

    public function __construct()
    {
        try {
            $this->conn = new mysqli($this->server, $this->username, $this->password, $this->db);
        } catch (\Throwable $th) {
            //throw $th;
            echo "Connection error " . $th->getMessage();
        }
    }
    public function fetch()
    {
        $data = [];

        $query = "SELECT * FROM Students INNER JOIN attendance_record ON Students.id = attendance_record.id where date_created` between '$start_date' and '$end_date';
";
		
        if ($sql = $this->conn->query($query)) {
            while ($row = mysqli_fetch_assoc($sql)) {
                $data[] = $row;
            }
        }

        return $data;
    }

    public function date_range($start_date, $end_date)
    {
        $data = [];

        if (isset($start_date) && isset($end_date)) {
           // $query = "SELECT * FROM Students INNER JOIN attendance_record ON Students.id = attendance_record.student_id where `attendance_record.date_created` BETWEEN '$start_date' AND '$end_date'";
           //$query = "SELECT * FROM Students WHERE date_created BETWEEN '$start_date 00:00:01' AND '$end_date 23:59:59'";
         $query = "SELECT * FROM Students INNER JOIN attendance_record ON Students.id = attendance_record.student_id where attendance_record.date_created BETWEEN '$start_date 00:00:01' AND '$end_date 23:59:59'  order by  attendance_record.date_created asc ";
		   if ($sql = $this->conn->query($query)) {
                while ($row = mysqli_fetch_assoc($sql)) {
                    $data[] = $row;
                }
            }
        }

        return $data;
    }
}