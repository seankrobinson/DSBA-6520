import streamlit as st
import base64
from pathlib import Path
from data.create_data import create_table

def img_to_bytes(img_path):
    img_bytes = Path(img_path).read_bytes()
    encoded = base64.b64encode(img_bytes).decode()
    return encoded


def app():
    header_html = "<img src='data:image/svg;base64,{}' class='img-fluid' style='width:698px;height:200px;'>".format(
        img_to_bytes("assets/Network_Science_Class_Logo.png")
    )
    st.markdown(
        header_html, unsafe_allow_html=True,
    )
    st.markdown("<h1 style='text-align: center;'>Summer I & II 2021</h1>", unsafe_allow_html=True)

    col1, col2 = st.beta_columns(2)

    col1.markdown('''
    ## Sean K. Robinson
    ### Contact Information:
    - Email: srobi116@uncc.edu
    - Twitter: [@sean_k_robinson](https://twitter.com/sean_k_robinson)
    - LinkedIn: [in/seankrobinson](https://linkedin.com/in/seankrobinson)
    - Office Hours: End of Class and via [Calendly](https://calendly.com/seankrobinson)
    
    ![Alt Text](https://dist.neo4j.com/wp-content/uploads/20180911045136/KeyLines-Neo4j-visualization-9-sm.gif)
    
    from Dan Williams' 2018 [post](https://neo4j.com/blog/5-ways-to-tackle-big-graph-data-keylines-neo4j/)
    ''')

    col2.text('')
    col2.markdown('''
    ### Course Info
    -  Tuesdays
    -  May 24 – Aug. 9, 2021
    -  5:30-9:15 PM
    -  [Canvas](https://canvas.uncc.edu)
    -  [Class Slack](https://dsba6520summer2021hq.slack.com)
    -  [Zoom](https://uncc.zoom.us/j/98668768190?pwd=bGZCcDl0a0NTd3MyeVVSZnRVaVQyZz09)
    ''')
#TODO: Update Canvas URL


