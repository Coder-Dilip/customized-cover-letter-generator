
```markdown
# Portfolio-Based Cover Letter Generator

This project helps generate personalized cover letters based on the job posting and your portfolio. The process involves extracting data from a job posting, matching it with your portfolio, and creating a cover letter tailored to the job requirements.

## Project Structure

- **resources/my_portfolio.csv**: A CSV file containing two columns:
  - **techstack**: The technologies or skills you possess.
  - **portfolio_url**: The respective URLs of your portfolio related to each tech stack.

## Workflow

1. **Input the Job Posting URL**: The user provides the URL of the job posting.
2. **Data Extraction**: The relevant data (job requirements, skills, experience, etc.) is extracted from the job posting.
3. **JSON Creation**: The extracted data is converted into a JSON format containing all the relevant details.
4. **Query Vector Database**: The JSON data is used to query a vector database, which contains the data from your `my_portfolio.csv` file.
5. **Document Indexing**: Relevant documents (tech stacks) are indexed based on the job requirements.
6. **Cover Letter Generation**: The relevant documents are provided to the LLM (Language Model) along with the job requirements in JSON format to generate a personalized cover letter.

## Setup

### Step 1: Get API Key

To get started, you first need to obtain an API key from the [GROQ Console](https://console.groq.com/keys). 

Once you have the API key, update the `GROQ_API_KEY` value inside the `.env` file with the key you created.

### Step 2: Install Dependencies

To install the necessary dependencies, run the following command:

```bash
pip install -r requirements.txt
```

### Step 3: Run the Application

Finally, to run the Streamlit application, use the following command:

```bash
streamlit run ./main.py
```

## Usage

1. Run the Streamlit app.
2. Provide the job posting URL.
3. The app will generate a personalized cover letter based on your portfolio and the job posting.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.
```

This `README.md` file provides an overview of your project, the workflow, setup instructions, and usage details.