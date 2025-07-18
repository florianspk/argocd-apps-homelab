#!/bin/bash

# Test des headers X-Forwarded-For
echo "=== Test des headers X-Forwarded-For ==="

# 1. Test depuis votre serveur
echo "1. Test direct vers votre endpoint:"
curl -H "X-Forwarded-For: 8.8.8.8" \
     -H "X-Real-IP: 8.8.8.8" \
     -H "CF-Connecting-IP: 8.8.8.8" \
     -v https://track.florianspk.fr/

echo -e "\n2. Test avec IP française:"
curl -H "X-Forwarded-For: 82.64.0.1" \
     -H "X-Real-IP: 82.64.0.1" \
     -v https://track.florianspk.fr/

echo -e "\n3. Vérification des logs Nginx:"
tail -f /var/log/nginx/track.florianspk.fr.access.log | grep -E "(X-Forwarded-For|X-Real-IP)"

# 4. Test avec httpbin pour voir les headers reçus
echo -e "\n4. Test de comparaison avec httpbin:"
echo "Headers reçus par httpbin.org:"
curl -H "X-Forwarded-For: 8.8.8.8" https://httpbin.org/headers

echo -e "\n5. Test de votre endpoint Litlyx:"
echo "Envoi d'un événement test avec IP spécifique:"
curl -X POST https://track.florianspk.fr/event \
     -H "Content-Type: application/json" \
     -H "X-Forwarded-For: 8.8.8.8" \
     -H "X-Real-IP: 8.8.8.8" \
     -d '{"project":"68739b5151499b88851b8143","event":"test-geolocation","data":{"test":true}}'
