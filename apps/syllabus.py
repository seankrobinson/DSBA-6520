import streamlit as st
import pandas as pd
import numpy as np
from data.create_data import create_table

def app():
    with open('markdown/DSBA_6520_Summer_2021.md') as file:
        markdown = file.read()
    st.markdown(markdown)


