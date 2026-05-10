import React, { useEffect, useState } from "react";
import "./PrincipalDashboard.css";

function PrincipalDashboard() {
  const [hods, setHods] = useState([]);

  useEffect(() => {
    fetch("http://192.168.10.206/attendance_system/api/principal/getHods.php")
      .then((res) => res.json())
      .then((data) => {
        setHods(data);
      })
      .catch((err) => console.log(err));
  }, []);

  return (
    <div className="principal-container">
      <h2 className="title">HOD List</h2>

      <table className="hod-table">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Department ID</th>
          </tr>
        </thead>

        <tbody>
          {hods.length > 0 ? (
            hods.map((hod) => (
              <tr key={hod.id}>
                <td>{hod.id}</td>
                <td>{hod.name}</td>
                <td>{hod.email}</td>
                <td>{hod.department_id}</td>
              </tr>
            ))
          ) : (
            <tr>
              <td colSpan="4">No HODs found</td>
            </tr>
          )}
        </tbody>
      </table>
    </div>
  );
}

export default PrincipalDashboard;