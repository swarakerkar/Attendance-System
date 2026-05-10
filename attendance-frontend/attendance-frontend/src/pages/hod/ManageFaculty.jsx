import React from "react";
import { useNavigate } from "react-router-dom";
import "./ManageFaculty.css";

function ManageFaculty() {
  const navigate = useNavigate();

  const cards = [
    {
      title: "Add Faculty",
      desc: "Create new faculty accounts and add them to your department",
      icon: "👨‍🏫",
      iconBg: "#fef3c7",
      iconColor: "#ea580c",
      className: "add-card",
      onClick: () => navigate("/add-faculty"),
      buttonText: "Add New Faculty",
      buttonIcon: "➕",
    },
    {
      title: "Assign Subjects",
      desc: "Assign available subjects to faculty members quickly",
      icon: "📚",
      iconBg: "#fff7ed",
      iconColor: "#f97316",
      className: "assign-card",
      onClick: () => navigate("/assign-subject"),
      buttonText: "Assign Subjects",
      buttonIcon: "📖",
    },
    {
      title: "Assigned Faculty",
      desc: "View which faculty is assigned to which subject",
      icon: "👥",
      iconBg: "#fffbeb",
      iconColor: "#fbbf24",
      className: "view-card",
      onClick: () => navigate("/faculty-subject"),
      buttonText: "View Assignments",
      buttonIcon: "👀",
    },
  ];

  return (
    <div className="manage-faculty-page">
      <div className="manage-faculty-header">
        <div className="header-badge">Faculty Management</div>
        <h1>Manage Faculty</h1>
        <p>Handle faculty records and subject assignments from one place</p>
      </div>

      <div className="manage-faculty-grid">
        {cards.map((card, index) => (
          <div
            key={index}
            className={`faculty-card ${card.className}`}
            onClick={card.onClick}
          >
            <div className="card-badge">{index + 1}</div>
            <div 
              className="faculty-card-icon" 
              style={{ 
                background: card.iconBg, 
                color: card.iconColor 
              }}
            >
              {card.icon}
            </div>
            <h2>{card.title}</h2>
            <p>{card.desc}</p>
            <div className="card-footer">
              <button className="faculty-card-btn">
                <span className="btn-icon">{card.buttonIcon}</span>
                {card.buttonText}
                <span className="btn-arrow">→</span>
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}

export default ManageFaculty;