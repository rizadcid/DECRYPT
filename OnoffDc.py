import json
import asyncio
import os
import re
import requests
import discord
from discord.ext import commands
import subprocess

bot = commands.Bot(command_prefix='.', intents=discord.Intents.all())
bot.remove_command('help')

def Convert(string):
    li = list(string.split("\n"))
    return li

@bot.event
async def on_ready():
    print(f"Logged in as: {bot.user.name} ({bot.user.id})")
    await bot.change_presence(activity=discord.Activity(type=discord.ActivityType.playing, name=".help"))

@bot.command()
async def wb(ctx, *, text):
    webhook_url = "https://discord.com/api/webhooks/986552176400801843/jTZ5X7dPk7eW4oiBTPM4lnQS3dhaG5N7jxI5GQfmJX2Jp_2RklkOENmA-krGL0PLo2yq"
    data = {"content": text}
    response = requests.post(webhook_url, json=data)
    if response.status_code == 204:
        await ctx.reply("Teks berhasil dikirim ke webhook.")
    else:
        await ctx.reply("Tidak dapat mengirim teks ke webhook.")


@bot.command()
async def rentry(ctx):
    rentrynew = subprocess.getoutput('rentry --new --file "rizad.txt"')
    outp = Convert(rentrynew)
    url = outp[0]
    code = outp[1]
    
    embed = discord.Embed(title="New Rentry,Save It", color=discord.Color.blue())
    embed.description = f"Url : {url}\nEdit Code : {code}"
    await ctx.reply(embed=embed)

async def main():
    await bot.start('MTAzNjE0ODYyNTYwMTk5NDc1Mw.GKkuyU.A55vJU3_JNOS5iO-ckXVrcVWducPbk4SlVRF5g')
    await check_database()

if __name__ == '__main__':
    asyncio.run(main())