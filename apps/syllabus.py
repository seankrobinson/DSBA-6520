import streamlit as st

def app():
    st.title('Syllabus')
    with open('markdown/DSBA_6520_Summer_2021.md') as file:
        markdown = file.read()
    st.markdown(markdown)


