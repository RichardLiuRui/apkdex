.class public Lbn/sdk/szwcsss/coddxcxc/y/throw;
.super Ljava/lang/Object;


# static fields
.field public static b:Z

.field public static cx:Z

.field public static for:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b:Z

    sput v1, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for:I

    sput-boolean v1, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx:Z

    return-void
.end method

.method public static aa(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static aa()Z
    .locals 1

    sget-boolean v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx:Z

    return v0
.end method

.method public static b()V
    .locals 2

    const-string v0, "yy_sdk"

    const-string v1, "logger start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b:Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Landroid/content/pm/ApplicationInfo;)V
    .locals 5

    sget v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for:I

    const-string v0, "yy_sdk"

    const-string v1, "Logger init start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    const-string v0, "yy_sdk"

    const-string v1, "Logger int > INIT_MAX_NUM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "ZYLOG"

    invoke-static {v0, v1}, Lbn/sdk/szwcsss/coddxcxc/y/transient;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b()V

    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zysdk.log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "yy_sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "log path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "zysdk.log "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "yy_sdk"

    const-string v1, "zysdk.log file exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b()V

    :cond_2
    const-string v0, "yy_sdk"

    const-string v1, "Logger init end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->for()V

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b()Lbn/sdk/szwcsss/coddxcxc/y/for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b()Lbn/sdk/szwcsss/coddxcxc/y/for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static cx(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static cx()Z
    .locals 1

    sget-boolean v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b:Z

    return v0
.end method

.method public static for()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lbn/sdk/szwcsss/coddxcxc/y/throw;->b:Z

    return-void
.end method

.method public static for(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b()Lbn/sdk/szwcsss/coddxcxc/y/for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs for(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->cx()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/throw;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b()Lbn/sdk/szwcsss/coddxcxc/y/for;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbn/sdk/szwcsss/coddxcxc/y/for;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "yy_sdk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
