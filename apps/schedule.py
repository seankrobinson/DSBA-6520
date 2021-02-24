import streamlit as st
import csvtomd

def app():
    st.title('Class Schedule')
    with open('assets/schedule.csv', 'r') as file:
        table = csvtomd.csv_to_table(file, ',')
    markdown = csvtomd.md_table(table, padding=2)
    st.markdown(markdown)



