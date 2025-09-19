# app/jobs/scheduler.py
from apscheduler.schedulers.asyncio import AsyncIOScheduler
from app.core.db import local_session
from app.jobs.stats import recompute_all_category_stats, recompute_all_subcategory_stats

def start_scheduler():
    scheduler = AsyncIOScheduler()
    scheduler.add_job(stats_job, "interval", minutes=5, id="recompute_category_stats")
    scheduler.start()

async def stats_job():
    async with local_session() as db:
        await recompute_all_category_stats(db)
        await recompute_all_subcategory_stats(db)