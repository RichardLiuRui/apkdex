.class Lcom/daily2fun/pay/union/PayInterFace$7;
.super Ljava/lang/Object;
.source "PayInterFace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/daily2fun/pay/union/PayInterFace;->startZhangPay(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/daily2fun/pay/union/PayInterFace;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$payInfo:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$7;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    iput-object p2, p0, Lcom/daily2fun/pay/union/PayInterFace$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/daily2fun/pay/union/PayInterFace$7;->val$payInfo:Ljava/util/Map;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 193
    invoke-static {}, Lorg/zzf/core/ZhangPaySdk;->getInstance()Lorg/zzf/core/ZhangPaySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/daily2fun/pay/union/PayInterFace$7;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace$7;->val$payInfo:Ljava/util/Map;

    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$7;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    # getter for: Lcom/daily2fun/pay/union/PayInterFace;->callBack:Lorg/zzf/core/ZhangPayCallback;
    invoke-static {v3}, Lcom/daily2fun/pay/union/PayInterFace;->access$7(Lcom/daily2fun/pay/union/PayInterFace;)Lorg/zzf/core/ZhangPayCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/zzf/core/ZhangPaySdk;->pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;Z)V

    .line 194
    return-void
.end method
