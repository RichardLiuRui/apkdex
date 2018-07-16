.class public Lcom/dataeye/DCConfigParams;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dataeye/ConfigParamsUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dataeye/DCConfigParams;->a:Lcom/dataeye/ConfigParamsUpdateListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_1
    const-string v1, "on"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "off"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "no"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method public static getParameterInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getParameterLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getParameterString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dataeye/c/p;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public static setConfigParamsUpdateListener(Lcom/dataeye/ConfigParamsUpdateListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/dataeye/ConfigParamsUpdateListener;

    .prologue
    sput-object p0, Lcom/dataeye/DCConfigParams;->a:Lcom/dataeye/ConfigParamsUpdateListener;

    return-void
.end method

.method public static update()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/dataeye/DCConfigParams;->a:Lcom/dataeye/ConfigParamsUpdateListener;

    invoke-static {v0, v1}, Lcom/dataeye/c/p;->a(ZLcom/dataeye/ConfigParamsUpdateListener;)V

    return-void
.end method
