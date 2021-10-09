import json

from requests_html import HTMLSession


if __name__ == "__main__":
    session = HTMLSession()
    r = session.get("https://www.startdataengineering.com/")

    results = []
    posts = r.html.find(".post")
    for each in posts:
        post_title = each.find(".post-title")
        # print(post_title[0].text, post_title[0].absolute_links.pop())
        post_date = each.find(".post-date")
        time_tag = post_date[0].find("time")
        # print(time_tag[0].attrs["datetime"])

        data = {
            "title": post_title[0].text,
            "url": post_title[0].absolute_links.pop(),
            "datetime": time_tag[0].attrs["datetime"],
            "summary": "",
        }
        results.append(data)
        # print("---")

    print(json.dumps(results))
