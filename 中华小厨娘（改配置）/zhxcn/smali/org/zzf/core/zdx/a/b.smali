.class public Lorg/zzf/core/zdx/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "database"

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    const-class v1, Lorg/zzf/core/zdx/a/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/zzf/core/zdx/a/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/zdx/a/b;

    invoke-direct {v0, p0}, Lorg/zzf/core/zdx/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/zzf/core/zdx/a/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    sget-object v0, Lorg/zzf/core/zdx/a/b;->a:Landroid/database/sqlite/SQLiteOpenHelper;
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
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table rules(_id integer primary key autoincrement, rule text not null, type integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table blockedmessages(_id integer primary key autoincrement, number text not null, msgbody text not null, timestamp integer, blockedrule  text, status integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table allowedmessages(_id integer primary key autoincrement, number text not null, timestamp integer, allowedrule  text, status integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const-string v0, "Update rules set type = 0 where type = 2"

    const-string v1, "Update rules set type = 2 where type = 7"

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v0, 0x11

    if-gt p2, v0, :cond_1

    const-string v0, "Update rules set type = 7 where type = 11"

    :try_start_1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const/16 v0, 0x12

    if-gt p2, v0, :cond_2

    const-string v0, "Update rules set type = 0 where type = 2"

    :try_start_2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    const/16 v0, 0x13

    if-gt p2, v0, :cond_3

    :try_start_3
    const-string v0, "create table blockedphone(_id integer primary key autoincrement, number text not null, timestamp integer, blockedrule  text, status integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    const/16 v0, 0x14

    if-gt p2, v0, :cond_4

    :try_start_4
    const-string v0, "create table allowedmessages(_id integer primary key autoincrement, number text not null, timestamp integer, allowedrule  text, status integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onUpgrade Error!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onUpgrade Error!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onUpgrade Error!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onUpgrade Error!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onUpgrade Error!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4
.end method
