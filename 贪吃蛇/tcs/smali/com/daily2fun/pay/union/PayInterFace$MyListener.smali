.class public Lcom/daily2fun/pay/union/PayInterFace$MyListener;
.super Ljava/lang/Object;
.source "PayInterFace.java"

# interfaces
.implements Lcom/android/mtools/MPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daily2fun/pay/union/PayInterFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/daily2fun/pay/union/PayInterFace;


# direct methods
.method public constructor <init>(Lcom/daily2fun/pay/union/PayInterFace;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/daily2fun/pay/union/PayInterFace$MyListener;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "cpOid"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "detail"    # I

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-static {v3}, Lcom/daily2fun/pay/union/PayInterFace;->access$5(Z)V

    .line 261
    const/16 v0, 0x3e9

    if-ne p3, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$MyListener;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v3, p1, v1}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9ea6\u5e7f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/daily2fun/pay/union/PayInterFace$MyListener;->this$0:Lcom/daily2fun/pay/union/PayInterFace;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/daily2fun/pay/union/PayInterFace;->showResult(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1, v2}, Lcom/daily2fun/pay/union/PayInterFace;->access$1(Lcom/daily2fun/pay/union/PayInterFace;ZLjava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9ea6\u5e7f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/daily2fun/pay/union/Log;->E(Ljava/lang/String;)V

    goto :goto_0
.end method
