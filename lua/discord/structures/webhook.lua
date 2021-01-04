function discord.structures.webhook(client, webhook)
    function webhook.delete(callback)
        client.deleteWebhook(webhook.id, callback)
    end

    function webhook.execute(params, callback)
        client.executeWebhook(webhook.id, webhook.token, params, callback)
    end

    webhook._type = "webhook"
    return webhook
end