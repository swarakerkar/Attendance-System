import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import "./AssignSubject.css";

function AssignSubject() {
  const navigate = useNavigate();
  const dept_nm = localStorage.getItem("department_name");
  const department_id = localStorage.getItem("department_id");

  const [faculties, setFaculties] = useState([]);
  const [subjects, setSubjects] = useState([]);
  const [formData, setFormData] = useState({
    faculty_id: "",
    subject_id: "",
  });
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    fetch(
      `http://192.168.10.206/attendance_system/api/hod/getFacultyByDepartment.php?department_id=${department_id}`
    )
      .then((res) => res.json())
      .then((data) => setFaculties(data))
      .catch((err) => console.error(err));

    fetch(
      `http://192.168.10.206/attendance_system/api/hod/getSubjectByDepartment.php?department_id=${department_id}`
    )
      .then((res) => res.json())
      .then((data) => setSubjects(data))
      .catch((err) => console.error(err));
  }, [department_id]);

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value,
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setLoading(true);

    fetch("http://192.168.10.206/attendance_system/api/hod/assign_subject.php", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(formData),
    })
      .then((res) => res.json())
      .then((data) => {
        if (data.message) {
          alert(data.message);
          navigate("/faculty-subject");
        } else {
          alert(data.error || "Error assigning subject");
        }
      })
      .catch((err) => {
        console.error(err);
        alert("Server error");
      })
      .finally(() => setLoading(false));
  };

  return (
    <div className="assign-container">
      <div className="assign-card">
        <div className="assign-header">
          <h2>📌 Assign Subject to Faculty</h2>
          <p>Map subjects with faculty members of {dept_nm || "your department"}</p>
        </div>

        <form onSubmit={handleSubmit} className="assign-form">
          <div className="form-group">
            <label>Department</label>
            <div className="disabled-field">
              <span className="field-icon">🏛️</span>
              <input type="text" value={dept_nm || "Loading..."} disabled />
            </div>
          </div>

          <div className="form-group">
            <label>Select Faculty</label>
            <div className="select-wrapper">
              <span className="select-icon">👨‍🏫</span>
              <select
                name="faculty_id"
                value={formData.faculty_id}
                onChange={handleChange}
                required
              >
                <option value="">-- Choose Faculty --</option>
                {faculties.map((f) => (
                  <option key={f.id} value={f.id}>
                    {f.name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="form-group">
            <label>Select Subject</label>
            <div className="select-wrapper">
              <span className="select-icon">📚</span>
              <select
                name="subject_id"
                value={formData.subject_id}
                onChange={handleChange}
                required
              >
                <option value="">-- Choose Subject --</option>
                {subjects.map((s) => (
                  <option key={s.id} value={s.id}>
                    {s.name}
                  </option>
                ))}
              </select>
            </div>
          </div>

          <div className="form-actions">
            <button
              type="button"
              className="cancel-btn"
              onClick={() => navigate(-1)}
            >
              Cancel
            </button>
            <button type="submit" className="submit-btn" disabled={loading}>
              {loading ? "Assigning..." : "➕ Assign Subject"}
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}

export default AssignSubject;