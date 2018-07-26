.class Lcom/shunpay210/sdk/SMS210$2;
.super Ljava/util/TimerTask;
.source "SMS210.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shunpay210/sdk/SMS210;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shunpay210/sdk/SMS210;


# direct methods
.method constructor <init>(Lcom/shunpay210/sdk/SMS210;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/shunpay210/sdk/SMS210$2;->this$0:Lcom/shunpay210/sdk/SMS210;

    .line 85
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/shunpay210/sdk/SMS210$2;->this$0:Lcom/shunpay210/sdk/SMS210;

    iget-object v0, v0, Lcom/shunpay210/sdk/SMS210;->m_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    return-void
.end method
