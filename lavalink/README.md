# Lavalink Server

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
