FROM gdssingapore/airbase:python-3.13
ENV PYTHONUNBUFFERED=TRUE
COPY --chown=app:app requirements.txt ./
RUN pip install -r requirements.txt
COPY --chown=app:app . ./
USER app
CMD ["bash", "-c", "streamlit run main.py --server.port=$PORT"]

# comment here for deploy
