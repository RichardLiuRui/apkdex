.class Lcom/daily2fun/pay/union/PayInterFace$4;
.super Ljava/lang/Object;
.source "PayInterFace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/daily2fun/pay/union/PayInterFace;->initZhangPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/daily2fun/pay/union/PayInterFace;

.field private final synthetic val$appId:Ljava/lang/String;

.field private final synthetic val$channelId:Ljava/lang/String;

.field private final synthetic val$context:Landroid/app/Activity;

.field private final synthetic val$qd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/daily2fun/pay/union/PayInterFace;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    iput-object p2, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$channelId:Ljava/lang/String;

    iput-object p4, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$qd:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Lorg/zzf/core/ZhangPaySdk;->getInstance()Lorg/zzf/core/ZhangPaySdk;

    move-result-object v0

    iget-object v1, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$channelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/daily2fun/pay/union/PayInterFace$4;->val$qd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/zzf/core/ZhangPaySdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method
