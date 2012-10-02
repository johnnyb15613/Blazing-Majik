.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trailer"
.end annotation


# instance fields
.field private cachedSize:I

.field private duration_:Ljava/lang/String;

.field private hasDuration:Z

.field private hasThumbnailUrl:Z

.field private hasTitle:Z

.field private hasTrailerId:Z

.field private hasWatchUrl:Z

.field private thumbnailUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private trailerId_:Ljava/lang/String;

.field private watchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3040
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3045
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    .line 3062
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    .line 3079
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 3096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    .line 3113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    .line 3162
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    .line 3040
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3165
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    if-gez v0, :cond_0

    .line 3167
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getSerializedSize()I

    .line 3169
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    return v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3114
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3174
    const/4 v0, 0x0

    .line 3175
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3176
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3179
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3180
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3183
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3184
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3187
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3188
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3191
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3192
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3195
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->cachedSize:I

    .line 3196
    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 3115
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration:Z

    return v0
.end method

.method public hasThumbnailUrl()Z
    .locals 1

    .prologue
    .line 3081
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 3064
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle:Z

    return v0
.end method

.method public hasTrailerId()Z
    .locals 1

    .prologue
    .line 3047
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId:Z

    return v0
.end method

.method public hasWatchUrl()Z
    .locals 1

    .prologue
    .line 3098
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3209
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3210
    :sswitch_0
    return-object p0

    .line 3215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3219
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3223
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3227
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3231
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    goto :goto_0

    .line 3205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3037
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration:Z

    .line 3118
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->duration_:Ljava/lang/String;

    .line 3119
    return-object p0
.end method

.method public setThumbnailUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl:Z

    .line 3084
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->thumbnailUrl_:Ljava/lang/String;

    .line 3085
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3066
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle:Z

    .line 3067
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->title_:Ljava/lang/String;

    .line 3068
    return-object p0
.end method

.method public setTrailerId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId:Z

    .line 3050
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->trailerId_:Ljava/lang/String;

    .line 3051
    return-object p0
.end method

.method public setWatchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;
    .locals 1
    .parameter "value"

    .prologue
    .line 3100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl:Z

    .line 3101
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->watchUrl_:Ljava/lang/String;

    .line 3102
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3145
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTrailerId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3146
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTrailerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3149
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3151
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3152
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3154
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasWatchUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3155
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getWatchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3157
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3158
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3160
    :cond_4
    return-void
.end method
