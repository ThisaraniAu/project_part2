from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

class Book(Base):
    __tablename__ = "books"
    id = Column(Integer, primary_key=True, index=True)
    title = Column(String(255), index=True, nullable=False)  # Added length and nullable constraint
    author = Column(String(255), index=True, nullable=False)  # Added length and nullable constraint
    year = Column(Integer, nullable=True)  # Year is kept as nullable, adjust as needed
