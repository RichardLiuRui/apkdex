.class public Lorg/zzf/core/zdx/b/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lorg/zzf/core/zdx/b/b;


# instance fields
.field private a:Lorg/zzf/core/zdx/a/a;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/zdx/b/b;->a:Lorg/zzf/core/zdx/a/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/zzf/core/zdx/b/b;->d:J

    return-void
.end method

.method public static declared-synchronized a()Lorg/zzf/core/zdx/b/b;
    .locals 2

    const-class v1, Lorg/zzf/core/zdx/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/zzf/core/zdx/b/b;->b:Lorg/zzf/core/zdx/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/zdx/b/b;

    invoke-direct {v0}, Lorg/zzf/core/zdx/b/b;-><init>()V

    sput-object v0, Lorg/zzf/core/zdx/b/b;->b:Lorg/zzf/core/zdx/b/b;

    :cond_0
    sget-object v0, Lorg/zzf/core/zdx/b/b;->b:Lorg/zzf/core/zdx/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->a:Lorg/zzf/core/zdx/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/zdx/a/a;

    invoke-direct {v0, p1}, Lorg/zzf/core/zdx/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/zdx/b/b;->a:Lorg/zzf/core/zdx/a/a;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lorg/zzf/core/zdx/b/b;->a(Landroid/content/Context;)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_a

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    if-nez p3, :cond_b

    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->a:Lorg/zzf/core/zdx/a/a;

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/zzf/core/zdx/a/a;->a(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_2
    :goto_2
    return-void

    :pswitch_1
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^\\d?*]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^\\d?*]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\p{P}\\p{S}\\s]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v2, "^[A-Za-z0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".*"

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ".*"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    move p2, v0

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\p{P}\\p{S}\\s]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\D"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ".*"

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ".*"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^\\d?*]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\p{P}\\p{S}\\s]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v2, "^[A-Za-z0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, ".*"

    invoke-virtual {v1, v4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v2, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v3, ".*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ".*"

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    move p2, v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    const-string v1, "\\?"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*"

    const-string v2, ".*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_b
    if-ne p3, v5, :cond_2

    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->a:Lorg/zzf/core/zdx/a/a;

    iget-wide v1, p0, Lorg/zzf/core/zdx/b/b;->d:J

    iget-object v3, p0, Lorg/zzf/core/zdx/b/b;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/zzf/core/zdx/a/a;->a(JLjava/lang/String;J)Z

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lorg/zzf/core/zdx/b/b;->a:Lorg/zzf/core/zdx/a/a;

    const-string v1, "rules"

    iget-wide v2, p0, Lorg/zzf/core/zdx/b/b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/zzf/core/zdx/a/a;->a(Ljava/lang/String;J)Z

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
