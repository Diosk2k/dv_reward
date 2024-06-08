fx_version 'adamant'
game 'gta5'

description 'dv reward'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'server.lua'
}

client_scripts {
    'config.lua',
    'client.lua'
}

dependencies {
    'es_extended',
    'ox_inventory'
}

shared_script '@es_extended/imports.lua'