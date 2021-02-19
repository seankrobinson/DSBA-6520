import streamlit as st
from multiapp import MultiApp
from apps import home, assignments, schedule, syllabus # import your app modules here

app = MultiApp()

# Add all your application here
app.add_app("Home", home.app)
app.add_app("assignments", assignments.app)
app.add_app("schedule", schedule.app)
app.add_app("syllabus", syllabus.app)
# The main app
app.run()