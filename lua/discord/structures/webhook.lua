function discord.structures.webhook(client, webhook)
    function webhook.delete(callback)
        client.deleteWebhook(webhook.id, callback)
    end

    function webhook.execute(msg, callback)
        client.executeWebhook(webhook.id, webhook.token, msg, callback)
    end

    webhook._type = "webhook"
    return webhook
end