.class public Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMS210.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shunpay210/sdk/SMS210;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMSServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shunpay210/sdk/SMS210;


# direct methods
.method public constructor <init>(Lcom/shunpay210/sdk/SMS210;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z
    invoke-static {v0}, Lcom/shunpay210/sdk/SMS210;->access$0(Lcom/shunpay210/sdk/SMS210;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shunpay210/sdk/SMS210;->access$2(Lcom/shunpay210/sdk/SMS210;Z)V

    .line 165
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/shunpay210/sdk/SMS210;->onSMSResult(I)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    # getter for: Lcom/shunpay210/sdk/SMS210;->m_bReadStatus:Z
    invoke-static {v0}, Lcom/shunpay210/sdk/SMS210;->access$0(Lcom/shunpay210/sdk/SMS210;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shunpay210/sdk/SMS210;->access$2(Lcom/shunpay210/sdk/SMS210;Z)V

    .line 171
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$SMSServiceReceiver;->this$0:Lcom/shunpay210/sdk/SMS210;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shunpay210/sdk/SMS210;->onSMSResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
