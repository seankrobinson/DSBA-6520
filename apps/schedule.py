import streamlit as st
import csvtomd

def app():
    st.title('Home')
    with open('markdown/schedule.csv', 'r') as file:
        table = csvtomd.csv_to_table(file, ',')
    markdown = csvtomd.md_table(table, padding=2)
    st.markdown(markdown)


