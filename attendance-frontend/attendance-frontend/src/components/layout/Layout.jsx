import Header from "./Header";
import Footer from "./Footer";
import { Link } from "react-router-dom";

function Layout({ children }) {
  const role = localStorage.getItem("role");

  return (
    <div className="layout">
      <Header />

      <div className="main">
        <div className="sidebar"> 
          <h3>Menu</h3>

          {/* Admin Menu */}
          {role === "admin" && (
            <>
              <Link to="/admin-dashboard">Dashboard</Link>
              <Link to="/manage-students">Manage Students</Link>
              <Link to="/manage-faculty">Manage Faculty</Link>
              <Link to="/profile">Profile</Link>
            </>
          )}

          {/* Faculty Menu */}
          {role === "faculty" && (
            <>
              <Link to="/dashboard">Dashboard</Link>
              <Link to="/mark-attendance-form">Take Attendance</Link>
              <Link to="/add-student">Add Student</Link>
              <Link to="/manage-students">Manage Student</Link>
              <Link to="/reports">Reports</Link>
              <Link to="/profile">Profile</Link>
            </>
          )}

          {/* Student Menu */}
          {role === "student" && (
            <>
              <Link to="/student-dashboard">Dashboard</Link>
              <Link to="/my-attendance">My Attendance</Link>
              <Link to="/profile">Profile</Link>
            </>
          )}
          {/* Student Menu */}
          {role === "hod" && (
            <>
              <Link to="/hod-dashboard">Dashboard</Link>
              <Link to="/manage-faculty">Manage Faculties</Link>
              <Link to="/add-faculty">Add Faculty</Link>
              <Link to="/assign-subject">Assign Subjects</Link>
              <Link to="/faculty-subject">Assigned Faulty</Link>
              <Link to="/display-students">Display All Students</Link>
              <Link to="/reports">Reports</Link>
              <Link to="/profile">Profile</Link>
            </>
          )}
        </div>

        <div className="content">
          {children}
        </div>
      </div>
      <Footer />
    </div>
  );
}

export default Layout;

