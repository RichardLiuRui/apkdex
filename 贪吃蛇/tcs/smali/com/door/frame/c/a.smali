.class public final Lcom/door/frame/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/door/frame/a/a;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static final f:Lcom/door/frame/c/a;

.field private static g:Lcom/door/frame/c/b/a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/util/List;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Landroid/os/Handler;

.field private static q:Ljava/util/List;

.field private static r:Z


# instance fields
.field private s:Landroid/os/Handler;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sput-object v1, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    .line 130
    const-string v0, "DnUpdateServer"

    sput-object v0, Lcom/door/frame/c/a;->c:Ljava/lang/String;

    .line 136
    const-string v0, ""

    sput-object v0, Lcom/door/frame/c/a;->d:Ljava/lang/String;

    .line 139
    const-string v0, "/a.do"

    sput-object v0, Lcom/door/frame/c/a;->e:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/door/frame/c/a;

    invoke-direct {v0}, Lcom/door/frame/c/a;-><init>()V

    sput-object v0, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    .line 144
    sput-object v1, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    .line 145
    const-string v0, "/temp.dl"

    sput-object v0, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    .line 146
    const-string v0, "/Plugin2.apk"

    sput-object v0, Lcom/door/frame/c/a;->i:Ljava/lang/String;

    .line 149
    const-string v0, "1"

    sput-object v0, Lcom/door/frame/c/a;->k:Ljava/lang/String;

    .line 153
    sput-object v1, Lcom/door/frame/c/a;->l:Ljava/util/List;

    .line 155
    sput-object v1, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    .line 156
    sput-object v1, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    .line 157
    sput-object v1, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    .line 158
    sput-object v1, Lcom/door/frame/c/a;->p:Landroid/os/Handler;

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/door/frame/c/a;->r:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Lcom/door/frame/c/b;

    invoke-direct {v0, p0}, Lcom/door/frame/c/b;-><init>(Lcom/door/frame/c/a;)V

    iput-object v0, p0, Lcom/door/frame/c/a;->s:Landroid/os/Handler;

    .line 621
    new-instance v0, Lcom/door/frame/c/c;

    invoke-direct {v0, p0}, Lcom/door/frame/c/c;-><init>(Lcom/door/frame/c/a;)V

    iput-object v0, p0, Lcom/door/frame/c/a;->t:Landroid/os/Handler;

    .line 167
    return-void
.end method

.method public static final a()Lcom/door/frame/c/a;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/door/frame/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/door/frame/c/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/door/frame/a/a;

    invoke-direct {v0}, Lcom/door/frame/a/a;-><init>()V

    .line 178
    sput-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iput p0, v0, Lcom/door/frame/a/a;->b:I

    .line 179
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iput-object p2, v0, Lcom/door/frame/a/a;->a:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iput p1, v0, Lcom/door/frame/a/a;->c:I

    .line 181
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1193
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1194
    const-string v0, "com.qp.lk.api.AdapterService"

    invoke-static {p0, v0}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1195
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1196
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1197
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1199
    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1201
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1204
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1202
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_0
    return-void

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Service;)V
    .locals 6

    .prologue
    .line 1170
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1171
    const-string v0, "com.qp.lk.api.AdapterService"

    invoke-static {p0, v0}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1172
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1173
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1174
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1177
    const-string v2, "onCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1178
    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    .line 1177
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1179
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1182
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1180
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Service;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 1237
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1238
    const-string v0, "com.qp.lk.api.AdapterService"

    invoke-static {p0, v0}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1239
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1240
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1241
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1243
    const-string v2, "onStart"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1244
    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    .line 1243
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1245
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1248
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 1246
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 1259
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1260
    const-string v0, "com.qp.lk.api.AdapterService"

    invoke-static {p0, v0}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1261
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1262
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1263
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1265
    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1266
    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v3, v4

    .line 1265
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1267
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1270
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1268
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_0
    return-void

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0, p2}, Lcom/door/frame/c/a;->a(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/door/frame/c/a;Lcom/door/frame/c/i;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 383
    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/door/frame/c/i;->a:Ljava/lang/String;

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->d()V

    iget-object v0, p1, Lcom/door/frame/c/i;->a:Ljava/lang/String;

    sput-object v0, Lcom/door/frame/c/a;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/temp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/door/frame/c/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/door/frame/c/b/a;

    sget-object v1, Lcom/door/frame/c/a;->j:Ljava/lang/String;

    sget-object v4, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/door/frame/c/a;->s:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/door/frame/c/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    :cond_0
    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    iget v0, v0, Lcom/door/frame/c/b/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :goto_0
    if-eqz v3, :cond_1

    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    const/4 v1, 0x3

    iput v1, v0, Lcom/door/frame/c/b/a;->d:I

    :cond_1
    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    iget v1, p1, Lcom/door/frame/c/i;->b:I

    sget-object v2, Lcom/door/frame/c/a;->k:Ljava/lang/String;

    iget v3, p1, Lcom/door/frame/c/i;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/door/frame/c/b/a;->a(ILjava/lang/String;I)Lcom/door/frame/a/c;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    invoke-virtual {v0}, Lcom/door/frame/c/b/a;->a()V

    :cond_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    sput-object p0, Lcom/door/frame/c/a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 153
    sput-object p0, Lcom/door/frame/c/a;->l:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized a(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/door/frame/c/e;

    invoke-direct {v0, p0, p1}, Lcom/door/frame/c/e;-><init>(Lcom/door/frame/c/a;Ljava/util/Map;)V

    .line 562
    invoke-virtual {v0}, Lcom/door/frame/c/e;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 160
    sput-boolean p0, Lcom/door/frame/c/a;->r:Z

    return-void
.end method

.method static synthetic b(Lcom/door/frame/c/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/door/frame/c/a;->t:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Lcom/door/frame/a/a;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1215
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1216
    const-string v0, "com.qp.lk.api.AdapterService"

    invoke-static {p0, v0}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1217
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1218
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1219
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1221
    const-string v2, "onRebind"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1223
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1226
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1224
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :goto_0
    return-void

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    sput-object p0, Lcom/door/frame/c/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1281
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1282
    const-string v0, "com.qp.lk.api.AdapterService"

    invoke-static {p0, v0}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1283
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1284
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1285
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1287
    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1289
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1292
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1290
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    sput-object p0, Lcom/door/frame/c/a;->k:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    sput-object p0, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 916
    monitor-enter p0

    const/4 v1, 0x0

    .line 918
    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 919
    sget-object v2, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v3, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v2, v3}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 920
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 921
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 923
    const-string v3, "readLogFile"

    .line 924
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    .line 923
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 925
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 926
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    :goto_0
    monitor-exit p0

    return-object v0

    .line 927
    :catch_0
    move-exception v0

    .line 929
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/door/frame/c/a;->r:Z

    return v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/door/frame/c/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/door/frame/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Lcom/door/frame/c/b/a;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/door/frame/c/a;->g:Lcom/door/frame/c/b/a;

    return-object v0
.end method

.method static synthetic k()Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/door/frame/c/a;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/door/frame/c/a;->r:Z

    return v0
.end method

.method static synthetic n()Lcom/door/frame/a/a;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Ljava/util/List;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/door/frame/c/a;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/door/frame/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/door/frame/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/door/frame/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized u()Ljava/lang/String;
    .locals 5

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    const-string v1, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    sget-object v2, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v3, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v2, v3}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 846
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 847
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 849
    const-string v3, "getSver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 850
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 851
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    :goto_0
    monitor-exit p0

    return-object v0

    .line 852
    :catch_0
    move-exception v0

    .line 854
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()Ljava/lang/String;
    .locals 5

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    const-string v1, "0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    sget-object v2, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v3, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v2, v3}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 865
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 866
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 868
    const-string v3, "getLocalSmsVer"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 869
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 870
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    :goto_0
    monitor-exit p0

    return-object v0

    .line 871
    :catch_0
    move-exception v0

    .line 873
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized w()V
    .locals 6

    .prologue
    .line 1119
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 1120
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1121
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1122
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1124
    const-string v2, "registerInitHandler"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1125
    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    .line 1124
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1126
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1129
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/door/frame/c/a;->t:Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 1127
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    :goto_0
    monitor-exit p0

    return-void

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    .prologue
    .line 1069
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/door/frame/a/a;

    invoke-direct {v0}, Lcom/door/frame/a/a;-><init>()V

    sput-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    sget-object v0, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    invoke-static {p1, v0}, Lcom/door/frame/utils/CmmUtils;->a(Landroid/content/Context;Lcom/door/frame/a/a;)V

    .line 1070
    :cond_0
    sput-object p1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    .line 1071
    sput-object p2, Lcom/door/frame/c/a;->p:Landroid/os/Handler;

    .line 1072
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    .line 1073
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->o(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->q:Ljava/util/List;

    .line 1074
    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    .line 1078
    invoke-direct {p0}, Lcom/door/frame/c/a;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    .line 1090
    invoke-direct {p0}, Lcom/door/frame/c/a;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 1096
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1097
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1098
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1100
    const-string v2, "init"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1101
    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 1102
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Landroid/os/Handler;

    aput-object v5, v3, v4

    .line 1100
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1103
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1106
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v4, v4, Lcom/door/frame/a/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v4, v4, Lcom/door/frame/a/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1107
    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget-object v4, v4, Lcom/door/frame/a/a;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/door/frame/c/a;->q:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 1108
    sget-object v4, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v4, v4, Lcom/door/frame/a/a;->c:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/16 v6, 0xb5

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string v6, "subtype"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "gid"

    sget-object v6, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    sget-object v6, Lcom/door/frame/c/a;->m:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    sget-object v6, Lcom/door/frame/c/a;->n:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "imei"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "imsi"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "soper"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ntype"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pcount"

    sget-object v6, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/door/frame/utils/CmmUtils;->l(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "su"

    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->getTypeSu()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sver"

    sget-object v6, Lcom/door/frame/c/a;->f:Lcom/door/frame/c/a;

    sget-object v6, Lcom/door/frame/c/a;->o:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "cpid"

    sget-object v6, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v6, v6, Lcom/door/frame/a/a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "aid"

    sget-object v6, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v6, v6, Lcom/door/frame/a/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "chid"

    sget-object v6, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget-object v6, v6, Lcom/door/frame/a/a;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/door/frame/c/a;->p:Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 1104
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1113
    :goto_0
    monitor-exit p0

    return-void

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 567
    new-instance v0, Lcom/door/frame/c/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/door/frame/c/f;-><init>(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Lcom/door/frame/c/f;->start()V

    .line 619
    return-void
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/door/frame/c/a;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-static {p1}, Lcom/door/frame/utils/CmmUtils;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 218
    new-instance v0, Lcom/door/frame/c/d;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/door/frame/c/d;-><init>(Lcom/door/frame/c/a;Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Lcom/door/frame/c/d;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1140
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    .line 1141
    sget-object v0, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v1, "com.qp.lk.api.SDK"

    invoke-static {v0, v1}, Lcom/door/frame/DnPayServer;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1142
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1143
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1145
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 1146
    const-class v3, Landroid/content/res/AssetManager;

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1147
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1146
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    const-string v3, "initManager"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 1150
    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 1149
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1151
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1154
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "com.door.pay.sdk"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "DnPayActivity"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "sms.SmsService"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "sms.SmsReceiver"

    aput-object v5, v4, v0

    .line 1152
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string v0, "init"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 1157
    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1156
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1159
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "35c520e3-06db-4cc2-b0f3-0f79472b0fd7"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "48e284688ef0dfc7"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v5, v5, Lcom/door/frame/a/a;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget v5, v5, Lcom/door/frame/a/a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/door/frame/c/a;->a:Lcom/door/frame/a/a;

    iget-object v5, v5, Lcom/door/frame/a/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    :goto_0
    monitor-exit p0

    return-void

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 938
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 939
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 940
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 942
    const-string v2, "writeLogFile"

    .line 943
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 942
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 944
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 945
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    :goto_0
    monitor-exit p0

    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 948
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 4

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/utils/CmmUtils;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    :try_start_1
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 1053
    sget-object v1, Lcom/door/frame/c/a;->b:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1054
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1055
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1057
    const-string v2, "exit"

    .line 1058
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 1057
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1059
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1060
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    :goto_0
    monitor-exit p0

    return-void

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
