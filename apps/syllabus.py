import streamlit as st
import pandas as pd
import numpy as np
from data.create_data import create_table

def app():
    with open('markdown/DSBA_6520_Summer_2021.txt') as file:
        markdown = file.read()
    st.markdown(markdown)
    df = create_table()
    st.write(df)

    st.write('Navigate to `Data Stats` page to visualize the data')


