.class final Lcom/door/frame/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/door/frame/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 125
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Lcom/door/frame/i;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
