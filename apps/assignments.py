import streamlit as st

def app():
    st.title('Assignments')
    with open('markdown/assignments.md') as file:
        markdown = file.read()
    st.markdown(markdown)