.class public Lorg/zzf/core/zdx/ZdxReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static final a:Ljava/lang/Object;

.field static b:Landroid/os/PowerManager$WakeLock;

.field private static j:Lorg/zzf/core/zdx/ZdxReceiver;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:J

.field private static o:J

.field private static u:Z

.field private static v:Z


# instance fields
.field private c:Ljava/lang/StringBuilder;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Lorg/zzf/core/zdx/a/a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private p:Ljava/util/HashMap;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/zzf/core/zdx/ZdxReceiver;->a:Ljava/lang/Object;

    sput-object v2, Lorg/zzf/core/zdx/ZdxReceiver;->b:Landroid/os/PowerManager$WakeLock;

    sput-object v2, Lorg/zzf/core/zdx/ZdxReceiver;->j:Lorg/zzf/core/zdx/ZdxReceiver;

    sput-boolean v1, Lorg/zzf/core/zdx/ZdxReceiver;->u:Z

    sput-boolean v1, Lorg/zzf/core/zdx/ZdxReceiver;->v:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    iput-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    iput-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v0, "system.sms.authcode"

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->p:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->r:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 4

    sget-wide v0, Lorg/zzf/core/zdx/ZdxReceiver;->o:J

    sget-wide v2, Lorg/zzf/core/zdx/ZdxReceiver;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/h;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/zzf/core/zdx/b/a;->a()Lorg/zzf/core/zdx/b/a;

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->M(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/zzf/core/zdx/ZdxReceiver;->abortBroadcast()V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    iget-object v2, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->e:J

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/zzf/core/zdx/a/a;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1}, Lorg/zzf/core/zdx/b/a;->b(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;I)V

    const-string v1, "blockedcount"

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/zzf/core/zdx/a/a;

    invoke-direct {v0, p1}, Lorg/zzf/core/zdx/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    invoke-virtual {v0, p1}, Lorg/zzf/core/zdx/a/a;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->p:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->p:Ljava/util/HashMap;

    const-string v1, "dbSMS_Body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/zzf/core/zdx/ZdxReceiver;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    sget-wide v0, Lorg/zzf/core/zdx/ZdxReceiver;->o:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    sget-wide v0, Lorg/zzf/core/zdx/ZdxReceiver;->n:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/zzf/core/zdx/ZdxReceiver;->a()I

    move-result v0

    if-ne v0, v8, :cond_5

    sget-object v0, Lorg/zzf/core/zdx/ZdxReceiver;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    invoke-static {p1}, Lorg/zzf/core/b/h;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/b/h;->C(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/zdx/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->q:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/zzf/core/zdx/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->r:Ljava/lang/String;

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->q:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->r(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/zzf/core/zdx/ZdxReceiver;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    goto :goto_1

    :cond_6
    sget-wide v0, Lorg/zzf/core/zdx/ZdxReceiver;->o:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    sget-wide v0, Lorg/zzf/core/zdx/ZdxReceiver;->n:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    sget-object v0, Lorg/zzf/core/zdx/ZdxReceiver;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->s:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v2, "type= 4"

    invoke-static {v1, v2}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    :try_start_0
    aget-object v4, v2, v1

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v2, v1

    const-string v5, "\\*"

    const-string v6, ".*"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    :cond_0
    aget-object v4, v2, v1

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->h:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u81ea\u5b9a\u767d\u5173\u952e\u8bcd] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v1, "006"

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Z)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v3, "type= 1"

    iget-object v4, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-boolean v3, Lorg/zzf/core/zdx/ZdxReceiver;->u:Z

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v4, "type= 7"

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/zzf/core/zdx/ZdxReceiver;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_4

    :try_start_0
    aget-object v5, v0, v3

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v0, v3

    const-string v6, "\\?"

    const-string v7, "."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    :cond_1
    :goto_1
    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u767d\u53f7\u7801] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    return v0

    :cond_2
    aget-object v5, v0, v3

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v0, v3

    const-string v6, "\\*"

    const-string v7, ".*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "005"

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    iget-wide v2, p0, Lorg/zzf/core/zdx/ZdxReceiver;->e:J

    invoke-virtual {v0, v1, v2, v3, p2}, Lorg/zzf/core/zdx/a/a;->a(Ljava/lang/String;JLjava/lang/String;)J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, "000"

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v2, "type= 0"

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_0
    aget-object v5, v2, v1

    const-string v6, "\\?"

    const-string v7, "."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\*"

    const-string v7, ".*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u81ea\u5b9a\u9ed1\u53f7\u7801]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v1, "008"

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v2, "type=8"

    invoke-static {v0, v2}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    :try_start_0
    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->h:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u81ea\u5b9a\u9ed1\u8bcd] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_1
    :goto_2
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "009"

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v2, "type=5"

    invoke-static {v1, v2}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_0
    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u81ea\u5b9a\u5339\u914d\u4f4d\u6570] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v1, "007"

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ErrorCode"

    invoke-static {p1, v0, p2}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v2, "type=\'6\'"

    invoke-static {v1, v2}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_0
    aget-object v4, v2, v1

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u6b63\u5219\u5f0f] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v1, "010"

    invoke-direct {p0, p1, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ErrorCode"

    invoke-static {p1, v0, p2}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lorg/zzf/core/zdx/ZdxReceiver;->u:Z

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v3, "type= 7"

    iget-object v4, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    :try_start_0
    aget-object v5, v3, v2

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v5, v3, v2

    const-string v6, "\\?"

    const-string v7, "."

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    :cond_0
    :goto_1
    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5185\u7f6e\u767d\u53f7\u7801] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/zzf/core/zdx/ZdxReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return v0

    :cond_1
    aget-object v5, v3, v2

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    const-string v6, "\\*"

    const-string v7, ".*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "011"

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private f(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lorg/zzf/core/zdx/ZdxReceiver;->v:Z

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    const-string v3, "type=\'3\'"

    invoke-static {v2, v3}, Lorg/zzf/core/zdx/a/c;->a(Lorg/zzf/core/zdx/a/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    :try_start_0
    aget-object v5, v3, v2

    iget-object v6, p0, Lorg/zzf/core/zdx/ZdxReceiver;->h:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\u5185\u7f6e\u9ed1\u8bcd] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "012"

    invoke-direct {p0, p1, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v2, 0x0

    iput-object p1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v4, v1, [Landroid/telephony/SmsMessage;

    if-eqz v4, :cond_5

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v3, v2

    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_0

    aget-object v1, v0, v3

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    aput-object v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    array-length v1, v4

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v3, v4, v0

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->e:J

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/zzf/core/b/h;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "25"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-static {v3}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-static {v3}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    const-string v5, "10000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    const-string v5, "10010"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-static {v3}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-static {v3}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-static {v5}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    const-string v5, "10000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    const-string v5, "10010"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    iget-object v5, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lorg/zzf/core/b/h;->B(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system.sms.authcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    const-string v0, "sysSMS_Body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/zdx/ZdxReceiver;->l:Ljava/lang/String;

    const-string v0, "sysSMS_Time"

    const-wide/16 v3, 0x457

    invoke-virtual {p2, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lorg/zzf/core/zdx/ZdxReceiver;->n:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "103"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    new-instance v0, Lorg/zzf/core/zdx/a/a;

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/zzf/core/zdx/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->f:Lorg/zzf/core/zdx/a/a;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/zdx/b/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "105"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->h:Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "109"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_4
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "110"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "111"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    iget-object v1, p0, Lorg/zzf/core/zdx/ZdxReceiver;->g:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "112"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "113"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "114"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/zzf/core/zdx/ZdxReceiver;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/zzf/core/zdx/ZdxReceiver;->t:Landroid/content/Context;

    const-string v1, "[\u6ca1\u6709\u89c4\u5219]"

    invoke-direct {p0, v0, v1}, Lorg/zzf/core/zdx/ZdxReceiver;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4
.end method
