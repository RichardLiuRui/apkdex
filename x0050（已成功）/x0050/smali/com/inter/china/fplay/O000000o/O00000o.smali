.class public Lcom/inter/china/fplay/O000000o/O00000o;
.super Ljava/lang/Object;
.source "SimInfo.java"


# instance fields
.field private O000000o:I

.field private O00000Oo:Ljava/lang/String;

.field private O00000o:Ljava/lang/String;

.field private O00000o0:I

.field private O00000oO:I

.field private O00000oo:I

.field private O0000O0o:Ljava/lang/String;

.field private O0000OOo:Ljava/lang/String;

.field private O0000Oo:I

.field private O0000Oo0:I

.field private O0000OoO:I


# direct methods
.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O000000o:I

    .line 32
    iput-object p2, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000Oo:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000o0:I

    .line 34
    iput-object p4, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000o:Ljava/lang/String;

    .line 35
    iput p5, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000oO:I

    .line 36
    iput p6, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000oo:I

    .line 37
    iput-object p7, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000O0o:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000OOo:Ljava/lang/String;

    .line 39
    iput p9, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000Oo0:I

    .line 40
    iput p10, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000Oo:I

    .line 41
    iput p11, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000OoO:I

    .line 42
    return-void
.end method

.method public static O000000o(Landroid/content/Context;I)Lcom/inter/china/fplay/O000000o/O00000o;
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 96
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sim_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 102
    if-eqz v13, :cond_3

    .line 103
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const-string v0, "_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 106
    const-string v0, "icc_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v0, "sim_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 108
    const-string v0, "display_name"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v0, "name_source"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 110
    const-string v0, "color"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 111
    const-string v0, "number"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    const-string v0, "display_number_format"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 113
    const-string v0, "data_roaming"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 114
    const-string v0, "mcc"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 115
    const-string v0, "mnc"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 116
    new-instance v0, Lcom/inter/china/fplay/O000000o/O00000o;

    invoke-direct/range {v0 .. v11}, Lcom/inter/china/fplay/O000000o/O00000o;-><init>(ILjava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :goto_0
    if-eqz v13, :cond_0

    .line 123
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_0
    :goto_1
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    move-object v1, v12

    .line 120
    :goto_2
    :try_start_2
    const-class v2, Lcom/inter/china/fplay/O000000o/O00000o;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    if-eqz v1, :cond_2

    .line 123
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    move-object v13, v12

    :goto_3
    if-eqz v13, :cond_1

    .line 123
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 122
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v13, v1

    goto :goto_3

    .line 119
    :catch_1
    move-exception v0

    move-object v1, v13

    goto :goto_2

    :cond_2
    move-object v0, v12

    goto :goto_1

    :cond_3
    move-object v0, v12

    goto :goto_0
.end method


# virtual methods
.method public O000000o()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O000000o:I

    return v0
.end method

.method public O00000Oo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000Oo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{sub_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O000000o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icc_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000Oo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sim_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display_name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000oO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", color : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O00000oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000O0o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display_number_format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000OOo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data_roaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000Oo0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mcc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mnc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inter/china/fplay/O000000o/O00000o;->O0000OoO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
