# Portfolio-Based Cover Letter Generator with Docker

This project generates personalized cover letters based on job postings and your portfolio. It extracts data from a job posting, matches it with your portfolio information in a CSV file, and creates a cover letter tailored to the job requirements using a powerful Language Model (LLM).

## Data used in Project

* **resources/my_portfolio.csv**: A CSV file containing two columns:
    * **techstack**: The technologies or skills you possess.
    * **portfolio_url**: The respective URLs of your portfolio related to each tech stack.

## Workflow

1. **Input Job Posting URL**: Provide the URL of the job posting.
2. **Data Extraction**: Script extracts relevant data (job requirements, skills, experience, etc.) from the job posting.
3. **JSON Creation**: Extracted data is converted into a JSON format.
4. **Query Vector Database (using GROQ)**: Use the JSON data to query a vector database containing data from `my_portfolio.csv`. 

5. **Document Indexing**: Relevant documents (tech stacks) are identified based on job requirements.
6. **Cover Letter Generation**: The identified documents and job requirements are provided to the LLM to generate a personalized cover letter.

## Setup with Docker

This project utilizes Docker for a streamlined setup experience.

**Prerequisites:** Docker installed on your system.

**Steps:**

1. **Obtain GROQ API Key**: 
    * Sign up for a free account at [GROQ Console](https://console.groq.com/keys).
    * Create a new project and get your API key.
2. **Set Up Environment Variable**:
    * Create a file named `.env` in the project's root directory.
    * Add the following line to `.env`, replacing `your_api_key_here` with your actual key:

    ```
    GROQ_API_KEY=your_api_key_here
    ```

3. **Build the Docker Image**:

    ```bash
    docker build -t cover-letter-generator .
    ```

4. **Run the Docker Container**:

    ```bash
    docker run -p 8501:8501 --env-file .env cover-letter-generator
    ```

    * This command maps port `8501` on your machine to port `8501` in the container and uses the `.env` file for environment variables.

## Usage

1. Open your web browser and navigate to `http://localhost:8501`. This will launch the Streamlit app within the container.
2. Provide the job posting URL in the app.
3. Click "Generate Cover Letter" and the app will create a personalized letter based on your portfolio and the job requirements.

## Contributing

We welcome contributions to this project! Please submit a Pull Request for any changes or improvements.

## License

This project is licensed under the MIT License.