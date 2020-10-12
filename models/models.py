from sqlalchemy import Column, Integer, String, Text, DateTime
from models.database import Base
from datetime import datetime


class Skills(Base):
    __tablename__ = 'skills'
    id = Column(Integer, primary_key=True)
    name = Column(Text, unique=True, nullable=False)
    image = Column(Text, unique=True, nullable=False)
    rank = Column(Integer, nullable=False)
    flag = Column(Integer, nullable=False)

    def __init__(self, id=None, name=None, image=None, rank=None, flag=None):
        self.id = id
        self.name = name
        self.image = image
        self.rank = rank
        self.flag = flag

    def __repr__(self):
        return '<name %r>' % (self.name)


class Portfolios(Base):
    __tablename__ = 'portfolios'
    id = Column(Integer, primary_key=True)
    name = Column(Text, unique=True, nullable=False)
    top_image = Column(Text, nullable=False)
    image = Column(Text, nullable=False)
    git = Column(Text)
    url = Column(Text)
    detail = Column(Text, nullable=False)
    used_skills = Column(Text, nullable=False)

    def __init__(self, id=None, name=None, top_image=None, image=None, git=None, url=None, detail=None, used_skills=None):
        self.id = id
        self.name = name
        self.top_image = top_image
        self.image = image
        self.git = git
        self.url = url
        self.detail = detail
        self.used_skills = used_skills

    def __repr__(self):
        return '<name %r>' % (self.name)