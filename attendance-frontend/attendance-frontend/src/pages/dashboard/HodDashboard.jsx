import React, { useEffect, useState } from 'react';
import { useNavigate } from "react-router-dom";
import './HodDashboard.css'; // Import CSS

function HodDashboard() {
    const navigate = useNavigate();
    const facultyId = localStorage.getItem("faculty_id");
    const departmentID = localStorage.getItem("department_id");


    const [facultyList, setFacultyList] = useState([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    const [hodInfo, setHodInfo] = useState({
        hod_name: "",
        department_name: ""
    });
    const fetchHodDetails = () => {
        if (!facultyId) return;

        fetch(`http://192.168.10.206/attendance_system/api/hod/getHodDetails.php?faculty_id=${facultyId}`)
            .then(res => res.json())
            .then(data => {
                setHodInfo({
                    hod_name: data.hod_name,
                    department_name: data.department_name
                });
            })
            .catch(err => console.log(err));
    };

    const fetchFaculty = () => {
        if (!departmentID) {
            setError("Department ID not found. Please log in again.");
            setLoading(false);
            return;
        }

        setLoading(true);
        setError(null);

        fetch(`http://192.168.10.206/attendance_system/api/hod/getFacultyByDepartment.php?department_id=${departmentID}`)
            .then(res => {
                if (!res.ok) throw new Error(`HTTP ${res.status}`);
                return res.json();
            })
            .then(data => {
                if (Array.isArray(data)) {
                    setFacultyList(data);
                } else {
                    throw new Error("Invalid data format");
                }
                setLoading(false);
            })
            .catch(err => {
                console.error(err);
                setError(err.message || "Failed to load faculty. Please try again.");
                setLoading(false);
            });
    };

    useEffect(() => {
        fetchFaculty();
        fetchHodDetails();
    }, [departmentID]);

    // Helper: get initials for avatar
    const getInitials = (name) => {
        if (!name) return "?";
        return name.trim().split(' ').map(part => part[0]).join('').toUpperCase().slice(0, 2);
    };

    return (
        <div className="hoddashboard-app">
            <div className="hod-dashboard">
                <div className="dashboard-header">
                    <h1 className="dashboard-title">HOD Dashboard</h1>
                    <div className="header-underline"></div>
                </div>

                <div className="info-grid">

                    <div className="info-card">
                        <p className="info-label">HOD Name</p>
                        <p className="info-value">{hodInfo.hod_name || "—"}</p>
                    </div>

                    <div className="info-card">
                        <p className="info-label">Department</p>
                        <p className="info-value">{hodInfo.department_name || "—"}</p>
                    </div>

                    <div
                        className="info-card clickable"
                        onClick={() => navigate("/manage-faculty")}
                    >
                        <p className="info-label">Manage Faculties</p>
                        <p className="info-value">{facultyList.length}</p>
                    </div>

                    <div
                        className="info-card clickable"
                        onClick={() => navigate("/display-students")}
                    >
                        <p className="info-label" >Manage Students</p>
                        <p className="info-value">View</p>
                    </div>

                </div>

                <h2 className="faculty-heading">Faculty in Your Department</h2>

                {loading ? (
                    <div className="loading-container">
                        <div className="spinner"></div>
                    </div>
                ) : error ? (
                    <div className="error-container">
                        <p className="error-message">{error}</p>
                        <button className="retry-button" onClick={fetchFaculty}>Retry</button>
                    </div>
                ) : (
                    <div className="faculty-grid">
                        {facultyList.length > 0 ? (
                            facultyList.map((faculty) => (
                                <div key={faculty.id} className="faculty-card">
                                    <div className="faculty-avatar">
                                        {getInitials(faculty.name)}
                                    </div>
                                    <div className="faculty-info">
                                        <h2 className="faculty-name">{faculty.name || "Unnamed"}</h2>
                                        {faculty.id && <p className="faculty-id-small">ID: {faculty.id}</p>}
                                    </div>
                                </div>
                            ))
                        ) : (
                            <div className="empty-state">
                                No faculty members found in this department.
                            </div>
                        )}
                    </div>
                    // <div className="faculty-grid">
                    //     {facultyList.length > 0 ? (
                    //         facultyList.map((faculty) => (
                    //             <div key={faculty.id} className="faculty-card">
                    //                 <div className="faculty-avatar">
                    //                     {getInitials(faculty.name)}
                    //                 </div>

                    //                 <div className="faculty-info">

                    //                     <h2 className="faculty-name">
                    //                         {faculty.name || "Unnamed"}
                    //                     </h2>
                    //                 </div>
                    //             </div>
                    //         ))
                    //     ) : (
                    //         <div className="empty-state">
                    //             No faculty members found in this department.
                    //         </div>
                    //     )}
                    // </div>
                )}
            </div>
        </div>
    );
}

export default HodDashboard;