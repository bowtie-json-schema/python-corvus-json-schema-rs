FROM python:3.14-alpine
WORKDIR /usr/src/harness
# The version is pinned in requirements.txt, which Dependabot keeps up to date.
COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt
COPY bowtie_corvus.py .
CMD ["python3", "bowtie_corvus.py"]
