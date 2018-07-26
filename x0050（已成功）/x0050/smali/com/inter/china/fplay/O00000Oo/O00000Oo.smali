.class public final Lcom/inter/china/fplay/O00000Oo/O00000Oo;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field static O000000o:Ljava/lang/String;

.field static O00000Oo:Ljava/lang/StringBuffer;

.field static O00000o0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "google-breakpad"

    sput-object v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000Oo:Ljava/lang/StringBuffer;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000o0:Z

    return-void
.end method

.method private static O000000o(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 106
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 108
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 111
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 109
    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    throw v0
.end method

.method public static O000000o()V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000Oo:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 75
    return-void
.end method

.method public static varargs O000000o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public static varargs O000000o(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000Oo:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    if-eqz p0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000Oo:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :cond_0
    sget-boolean v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000o0:Z

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u7ebf\u7a0b\u4e3a \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   message :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-nez p0, :cond_2

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    sget-object v0, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O000000o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u7ebf\u7a0b\u4e3a \uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   throwable :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static O00000Oo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/inter/china/fplay/O00000Oo/O00000Oo;->O00000Oo:Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method
