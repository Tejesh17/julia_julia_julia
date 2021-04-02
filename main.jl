using HTTP
using JSON
artist_name= "Jeremy Zucker"
# artist_name= readline()
artist_uri = HTTP.escapeuri(artist_name)


r = HTTP.get("https://api.lyrics.ovh/v1/"* artist_uri*"/Julia"; readtimeout=23, retry = false)


# println(r.status)


lyrics_dict = (JSON.parse(String(r.body)))

println(lyrics_dict["lyrics"])

