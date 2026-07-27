# Lavalink Server

## Deploy ke Railway

1. [railway.app](https://railway.app) → **New Project** → **Deploy from GitHub repo** → pilih repo ini
2. Railway otomatis deteksi `Dockerfile`
3. Set variable berikut di **Settings → Variables**

### Variable Wajib

| Variable | Contoh | Keterangan |
|---|---|---|
| `LAVALINK_SERVER_PASSWORD` | `password123` | Password untuk bot konek |

### Variable Opsional (source tambahan)

| Variable | Keterangan |
|---|---|
| `SPOTIFY_CLIENT_ID` | Spotify App Client ID |
| `SPOTIFY_CLIENT_SECRET` | Spotify App Client Secret |
| `DEEZER_MASTER_KEY` | Deezer decryption key |
| `DEEZER_ARL` | Deezer ARL token |
| `APPLE_MUSIC_TOKEN` | Apple Music media token |
| `YANDEX_MUSIC_TOKEN` | Yandex Music access token |
| `VK_USER_TOKEN` | VK Music user token |
| `TIDAL_COUNTRY_CODE` | Kode negara Tidal (default: `US`) |

### Koneksi Bot Setelah Deploy

```js
host: "xxx.railway.app"
port: 443
password: "LAVALINK_SERVER_PASSWORD_yang_kamu_set"
secure: true
```

---


## Versi
- **Lavalink**: 4.2.2
- **youtube-plugin**: 1.18.2
- **lavasrc-plugin**: 4.8.3
- **lavasearch-plugin**: 1.0.0

## Koneksi dari Bot (Node.js)

```js
// Contoh untuk lavalink-client / shoukaku / erela.js
host: "localhost"      // atau domain Replit
port: 3000
password: "youshallnotpass"
secure: false
```

## Source yang Aktif (default)
- ✅ YouTube (via youtube-plugin)
- ✅ SoundCloud
- ✅ Bandcamp
- ✅ Twitch
- ✅ Vimeo
- ✅ HTTP streams

## Mengaktifkan Source Tambahan

Edit `application.yml` → bagian `plugins.lavasrc.sources`:

### Spotify
```yaml
sources:
  spotify: true
spotify:
  clientId: "CLIENT_ID"
  clientSecret: "CLIENT_SECRET"
```

### Apple Music
```yaml
sources:
  appleMusic: true
appleMusic:
  mediaAPIToken: "TOKEN"
```

### Deezer
```yaml
sources:
  deezer: true
deezer:
  masterDecryptionKey: "KEY"
  arl: "ARL_TOKEN"
```

### Yandex Music
```yaml
sources:
  yandexMusic: true
yandexMusic:
  accessToken: "TOKEN"
```

## Filters yang Tersedia
- volume, equalizer, karaoke
- timescale (speed/pitch/rate)
- tremolo, vibrato
- distortion, rotation
- channelMix, lowPass

## LavaSearch
Prefix pencarian:
- `ytsearch:` — YouTube
- `ytmsearch:` — YouTube Music
- `scsearch:` — SoundCloud

## Logs
Tersimpan di `lavalink/logs/`
