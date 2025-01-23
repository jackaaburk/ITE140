###
# Before running this, you'll need to set the password
# as an environment variable:
#   export PGPASSWORD="your_password"
###


import os
from sqlalchemy import create_engine
import pandas as pd

# Get password from environment variable
password = os.getenv("PGPASSWORD")

# Build the SQLAlchemy connection string
db_name = "jburkholder"
user = "jburkholder"
host = "dbserver.gctaa.net"
port = "5432"

connection_string = f"postgresql+psycopg://{user}:{password}@{host}:{port}/{db_name}"

# Create the SQLAlchemy engine
engine = create_engine(connection_string)

# Execute a query using Pandas
query = "SELECT P.FirstName, P.LastName, C.ContractSalary, C.ContractYears FROM Celtics25.Contracts C JOIN Celtics25.Players P ON C.PlayerID = P.PlayerID;"
df = pd.read_sql_query(query, engine)

# Display or save the DataFrame
df.to_excel("output.xlsx", index=False)