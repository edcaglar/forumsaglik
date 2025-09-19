import asyncio
from redis.asyncio import Redis

async def test():
    r = Redis.from_url("redis://localhost:6379/0")
    await r.set("foo", "bar")
    await r.set("zoo", "zar")
    print(await r.get("foo"))
    print(type(await r.get("foo")))
    print(await r.get("zoo"))

asyncio.run(test())
