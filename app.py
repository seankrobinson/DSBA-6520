import streamlit as st
import os
from multiapp import MultiApp
from apps import home, assignments, schedule, syllabus # import your app modules here
from PIL import Image

favicon = Image.open(os.path.join('assets', 'UNCC_favicon.jpeg'))
st.set_page_config(
    page_title="DSBA-6520",
    page_icon=favicon,
    initial_sidebar_state="expanded")

app = MultiApp()

# Add all your application here
app.add_app("Home", home.app)
app.add_app("Assignments", assignments.app)
app.add_app("Schedule", schedule.app)
app.add_app("Syllabus", syllabus.app)
# The main app
app.run()