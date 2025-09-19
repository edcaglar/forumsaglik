# Test için basit bir script
import asyncpg
import asyncio

async def test_connection():
    try:
        conn = await asyncpg.connect(
            user='deniz',
            password='1',
            database='forumsaglik',
            host='localhost',
            port=5432
        )
        await conn.close()
        print("Bağlantı başarılı!")
    except Exception as e:
        print(f"Bağlantı hatası: {e}")

asyncio.run(test_connection())