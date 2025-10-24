import streamlit as st

st.set_page_config(page_title="Mijn Streamlit App", page_icon="🚀", layout="centered")
st.title("🚀 Mijn Streamlit App in Docker op een VPS")
st.markdown("Welkom bij je Streamlit webapp nummer 2!")

naam = st.text_input("Wat is je naam?")
if naam:
    st.success(f"Welkom, {naam}!")
