.class public Lcom/dataeye/DCCocos2dConfigParams;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    invoke-static {p0, p1}, Lcom/dataeye/DCConfigParams;->getParameterBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getParameterInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/dataeye/DCConfigParams;->getParameterInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getParameterLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    invoke-static {p0, p1, p2}, Lcom/dataeye/DCConfigParams;->getParameterLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getParameterString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/dataeye/DCConfigParams;->getParameterString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static update()V
    .locals 1

    new-instance v0, Lcom/dataeye/a;

    invoke-direct {v0}, Lcom/dataeye/a;-><init>()V

    invoke-static {v0}, Lcom/dataeye/DCConfigParams;->setConfigParamsUpdateListener(Lcom/dataeye/ConfigParamsUpdateListener;)V

    invoke-static {}, Lcom/dataeye/DCConfigParams;->update()V

    return-void
.end method

.method public static native updateComplete()V
.end method
