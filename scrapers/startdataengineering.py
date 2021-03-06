import json

from bs4 import BeautifulSoup
from requests_html import HTMLSession


def get_text(parent):
    return "".join(parent.find_all(text=True, recursive=False)).strip()


if __name__ == "__main__":
    session = HTMLSession()
    r = session.get("https://www.startdataengineering.com/")

    results = []
    posts = r.html.find(".post")
    for each in posts:
        soup = BeautifulSoup(each.html, "html.parser")
        summary = get_text(soup.article)
        post_title = each.find(".post-title")
        post_date = each.find(".post-date")
        time_tag = post_date[0].find("time")

        data = {
            "title": post_title[0].text,
            "author": "Start Data Engineering",
            "url": post_title[0].absolute_links.pop(),
            "datetime": time_tag[0].attrs["datetime"],
            "summary": summary,
        }
        results.append(data)

    print(json.dumps(results))
