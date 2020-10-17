from flask import Flask, render_template, request, redirect, url_for
from models.models import Skills, Portfolios

# 自身の名称を app という名前でインスタンス化する
app = Flask(__name__)

# index にアクセスしたときの処理


@app.route('/')
def index():
    title = "haljion's portfolio"

    skills = Skills.query.all()
    portfolios = Portfolios.query.all()
    used_skills = [portfolio.used_skills.split(":") \
        for portfolio in portfolios]
    images = [portfolio.image.split(":") \
        for portfolio in portfolios]
    details = [portfolio.detail.split("br") \
        for portfolio in portfolios]
    portfolios = list(zip(portfolios, used_skills, images, details))
    return render_template("index.html",
                           title=title,
                           skills=skills,
                           portfolios=portfolios,)


if __name__ == '__main__':
    app.debug = True  # デバッグモード有効化
    app.run()
