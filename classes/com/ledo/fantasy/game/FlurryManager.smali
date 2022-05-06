.class public Lcom/ledo/fantasy/game/FlurryManager;
.super Ljava/lang/Object;
.source "FlurryManager.java"


# static fields
.field private static FLURRY_ENABLE:Z

.field private static TAG:Ljava/lang/String;

.field private static configSaved:Ljava/lang/Boolean;

.field private static eventTimesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static flurryConfigFileName:Ljava/lang/String;

.field public static flurryEndEvent:Ljava/lang/String;

.field private static flurryLogedEvent:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static flurryid:Ljava/lang/String;

.field private static s_firstWriteTime:J

.field private static s_lastWriteTime:J

.field private static s_totalTime:J

.field static vRepeat:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    .line 24
    const-string v0, "FlurryAgent"

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->flurryid:Ljava/lang/String;

    .line 26
    const-string v0, "flurryConfig"

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->flurryConfigFileName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->configSaved:Ljava/lang/Boolean;

    .line 28
    const-string v0, "EVENT_JNIPROXY_ONLOGINED"

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->flurryEndEvent:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->eventTimesMap:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->vRepeat:Ljava/util/Vector;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ledo/fantasy/game/FlurryManager;->flurryLogedEvent:Ljava/util/HashSet;

    .line 298
    sput-wide v2, Lcom/ledo/fantasy/game/FlurryManager;->s_firstWriteTime:J

    .line 299
    sput-wide v2, Lcom/ledo/fantasy/game/FlurryManager;->s_lastWriteTime:J

    .line 300
    sput-wide v2, Lcom/ledo/fantasy/game/FlurryManager;->s_totalTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EndLogEvent(Ljava/lang/String;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-boolean v1, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v1, :cond_5

    .line 223
    :goto_4
    return-void

    .line 219
    :cond_5
    :try_start_5
    sget-object v1, Lcom/ledo/fantasy/game/FlurryManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EndLogEvent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    goto :goto_4

    .line 220
    :catch_1a
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static EndSession(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-boolean v0, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v0, :cond_4

    .line 57
    :cond_4
    return-void
.end method

.method public static FlurryError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "errorid"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    sget-boolean v1, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v1, :cond_5

    .line 211
    :goto_4
    return-void

    .line 203
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->StartSession(Landroid/content/Context;)V

    .line 205
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/game/FlurryManager;->EndSession(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_4

    .line 207
    :catch_14
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static LogError(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "logstr1"    # Ljava/lang/String;
    .param p1, "logstr2"    # Ljava/lang/String;
    .param p2, "notRepeatSameError"    # Z

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 172
    :cond_c
    :goto_c
    return-void

    .line 157
    :cond_d
    const-string v1, "[LUA ERROR]"

    .line 158
    .local v1, "prestr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "substr":Ljava/lang/String;
    if-eqz p2, :cond_c

    sget-object v3, Lcom/ledo/fantasy/game/FlurryManager;->vRepeat:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 162
    sget-object v3, Lcom/ledo/fantasy/game/FlurryManager;->vRepeat:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v0, "luaerror":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "[LUA_ERROR]"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p0, v0}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_c
.end method

.method public static LogEvent(Ljava/lang/String;)V
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-boolean v2, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v2, :cond_5

    .line 82
    :goto_4
    return-void

    .line 64
    :cond_5
    :try_start_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_4

    .line 79
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_e
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static LogEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v2, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v2, :cond_5

    .line 137
    :cond_4
    :goto_4
    return-void

    .line 110
    :cond_5
    if-nez p1, :cond_c

    .line 111
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 113
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    :try_start_c
    sget-object v2, Lcom/ledo/fantasy/game/FlurryManager;->eventTimesMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 114
    .local v1, "times":Ljava/lang/Integer;
    if-nez v1, :cond_50

    .line 115
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 119
    :goto_1b
    sget-object v2, Lcom/ledo/fantasy/game/FlurryManager;->eventTimesMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v2, "event_times"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    invoke-static {v2}, Lcom/ledo/fantasy/game/FlurryManager;->StartSession(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v2

    invoke-static {v2}, Lcom/ledo/fantasy/game/FlurryManager;->EndSession(Landroid/content/Context;)V

    .line 131
    sget-object v2, Lcom/ledo/fantasy/game/FlurryManager;->configSaved:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/ledo/fantasy/game/FlurryManager;->flurryEndEvent:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-static {}, Lcom/ledo/fantasy/game/FlurryManager;->saveFlurryConfig()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4a} :catch_4b

    goto :goto_4

    .line 134
    .end local v1    # "times":Ljava/lang/Integer;
    :catch_4b
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "times":Ljava/lang/Integer;
    :cond_50
    :try_start_50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_4b

    move-result-object v1

    goto :goto_1b
.end method

.method public static LogEvent(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v1, :cond_5

    .line 149
    :goto_4
    return-void

    .line 145
    :cond_5
    :try_start_5
    invoke-static {p0, p1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    .line 146
    :catch_9
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static LogEvent(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "time"    # Z

    .prologue
    .line 85
    sget-boolean v2, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v2, :cond_5

    .line 94
    :goto_4
    return-void

    .line 88
    :cond_5
    :try_start_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, v1}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_4

    .line 91
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_e
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static LogEventException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    sget-boolean v7, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v7, :cond_5

    .line 197
    :goto_4
    return-void

    .line 178
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v6, v7, v8

    .line 179
    .local v6, "se":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    .line 181
    .local v3, "line":I
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "method":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "classname":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "description"

    invoke-virtual {v4, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v7, "file"

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v7, "line"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v7, "classname"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v7, "method"

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v7, "JAVA_EXCEPTION"

    invoke-static {v7, v4}, Lcom/ledo/fantasy/game/FlurryManager;->LogEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_4

    .line 193
    .end local v0    # "classname":Ljava/lang/String;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "line":I
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "se":Ljava/lang/StackTraceElement;
    :catch_44
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static StartSession(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-boolean v1, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    if-nez v1, :cond_5

    .line 46
    :goto_4
    return-void

    .line 36
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/ledo/fantasy/game/GameApp;->getApp()Lcom/ledo/fantasy/game/GameApp;

    move-result-object v1

    sget v2, Lcom/ledo/fantasy/game/R$string;->flurryid:I

    invoke-virtual {v1, v2}, Lcom/ledo/fantasy/game/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/FlurryManager;->flurryid:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_4

    .line 42
    :catch_12
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    sget-object v1, Lcom/ledo/fantasy/game/FlurryManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static checkFirstInstall()V
    .registers 5

    .prologue
    .line 227
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ledo/fantasy/game/FlurryManager;->flurryConfigFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ledo/fantasy/update/Utils;->loadConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 228
    .local v1, "prop":Ljava/util/Properties;
    if-nez v1, :cond_27

    .line 229
    const/4 v3, 0x1

    sput-boolean v3, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z

    .line 241
    :goto_26
    return-void

    .line 231
    :cond_27
    const-string v3, "logged"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_3d

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 233
    :cond_3d
    const/4 v3, 0x1

    sput-boolean v3, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_26

    .line 238
    .end local v2    # "val":Ljava/lang/String;
    :catch_41
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "val":Ljava/lang/String;
    :cond_46
    const/4 v3, 0x0

    :try_start_47
    sput-boolean v3, Lcom/ledo/fantasy/game/FlurryManager;->FLURRY_ENABLE:Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_49} :catch_41

    goto :goto_26
.end method

.method private static flurryLogFile(Ljava/lang/String;)Z
    .registers 13
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 302
    if-eqz p0, :cond_c

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_c
    move v3, v6

    .line 323
    :goto_d
    return v3

    .line 304
    :cond_e
    sget-object v7, Lcom/ledo/fantasy/game/FlurryManager;->flurryLogedEvent:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-nez v7, :cond_56

    .line 305
    invoke-static {}, Lcom/ledo/fantasy/game/FlurryManager;->openLogedFile()V

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_firstWriteTime:J

    .line 307
    sget-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_firstWriteTime:J

    sput-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_lastWriteTime:J

    .line 308
    const-wide/16 v8, 0x0

    sput-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_totalTime:J

    .line 309
    const-wide/16 v0, 0x0

    .line 316
    .local v0, "eslaped":J
    :goto_29
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%d\t%d\t%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    sget-wide v10, Lcom/ledo/fantasy/game/FlurryManager;->s_totalTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v3

    const/4 v10, 0x2

    aput-object p0, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "localstr":Ljava/lang/String;
    invoke-static {v2}, Lcom/ledo/fantasy/game/FlurryManager;->writeFlurryEventFile(Ljava/lang/String;)V

    .line 318
    sget-object v7, Lcom/ledo/fantasy/game/FlurryManager;->flurryLogedEvent:Ljava/util/HashSet;

    invoke-virtual {v7, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 319
    sget-object v6, Lcom/ledo/fantasy/game/FlurryManager;->flurryLogedEvent:Ljava/util/HashSet;

    invoke-virtual {v6, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 311
    .end local v0    # "eslaped":J
    .end local v2    # "localstr":Ljava/lang/String;
    :cond_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 312
    .local v4, "now":J
    sget-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_lastWriteTime:J

    sub-long v0, v4, v8

    .line 313
    .restart local v0    # "eslaped":J
    sget-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_firstWriteTime:J

    sub-long v8, v4, v8

    sput-wide v8, Lcom/ledo/fantasy/game/FlurryManager;->s_totalTime:J

    .line 314
    sput-wide v4, Lcom/ledo/fantasy/game/FlurryManager;->s_lastWriteTime:J

    goto :goto_29

    .end local v4    # "now":J
    .restart local v2    # "localstr":Ljava/lang/String;
    :cond_67
    move v3, v6

    .line 323
    goto :goto_d
.end method

.method private static openLogedFile()V
    .registers 6

    .prologue
    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/flurryEventFile.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "logedFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 249
    .local v3, "scan":Ljava/util/Scanner;
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_2c
    .catchall {:try_start_1d .. :try_end_26} :catchall_36

    .line 262
    :cond_26
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 264
    :cond_2b
    :goto_2b
    return-void

    .line 258
    :catch_2c
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_36

    .line 262
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    goto :goto_2b

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_36
    move-exception v4

    .line 262
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 263
    :cond_3c
    throw v4
.end method

.method private static saveFlurryConfig()V
    .registers 3

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/FlurryManager;->flurryConfigFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ledo/fantasy/update/Utils;->loadConfig(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 98
    .local v0, "prop":Ljava/util/Properties;
    if-nez v0, :cond_28

    .line 99
    new-instance v0, Ljava/util/Properties;

    .end local v0    # "prop":Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 101
    .restart local v0    # "prop":Ljava/util/Properties;
    :cond_28
    const-string v1, "logged"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ledo/fantasy/game/FlurryManager;->flurryConfigFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ledo/fantasy/update/Utils;->saveConfig(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 103
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/ledo/fantasy/game/FlurryManager;->configSaved:Ljava/lang/Boolean;

    .line 104
    return-void
.end method

.method private static writeFlurryEventFile(Ljava/lang/String;)V
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ledo/fantasy/update/UpdateEngineActivity;->getAssetsOutDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_25
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "flurryEventFile.log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .restart local v2    # "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 272
    .local v3, "fw":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 275
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_3f
    new-instance v4, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_45} :catch_60
    .catchall {:try_start_3f .. :try_end_45} :catchall_6e

    .line 276
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_45
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_87
    .catchall {:try_start_45 .. :try_end_4a} :catchall_80

    .line 280
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_4a
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 282
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_8a
    .catchall {:try_start_4a .. :try_end_53} :catchall_83

    .line 290
    if-eqz v4, :cond_58

    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 291
    :cond_58
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_7a

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .line 297
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_5f
    :goto_5f
    return-void

    .line 285
    :catch_60
    move-exception v6

    .line 290
    :goto_61
    if-eqz v3, :cond_66

    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 291
    :cond_66
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_6c

    goto :goto_5f

    .line 293
    :catch_6c
    move-exception v6

    goto :goto_5f

    .line 288
    :catchall_6e
    move-exception v6

    .line 290
    :goto_6f
    if-eqz v3, :cond_74

    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    .line 291
    :cond_74
    if-eqz v0, :cond_79

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_79} :catch_7e

    .line 296
    :cond_79
    :goto_79
    throw v6

    .line 293
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_7a
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_5f

    :catch_7e
    move-exception v7

    goto :goto_79

    .line 288
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catchall_80
    move-exception v6

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_6f

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catchall_83
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_6f

    .line 285
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_87
    move-exception v6

    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_61

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :catch_8a
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_61

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    :cond_8e
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    goto :goto_5f
.end method
