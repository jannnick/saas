mkdir -p ~/.streamlit/

# Check if the key exists, if not, initialize it
if 'authenticator' not in st.session_state:
    st.session_state.authenticator = None  # Or initialize it with an appropriate value

echo "\
[general]\n\
email = \"your-email@domain.com\"\n\
" > ~/.streamlit/credentials.toml
echo "\
[server]\n\
headless = true\n\
enableCORS=false\n\
port = $PORT\n\
" > ~/.streamlit/config.toml
