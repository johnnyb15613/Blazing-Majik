.class public Lcom/google/android/finsky/activities/SearchFragment;
.super Lcom/google/android/finsky/fragments/PageFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mBackendId:I

.field private mNumCellsTallSearch:I

.field private mNumCellsWideSearch:I

.field private mQuery:Ljava/lang/String;

.field private mReferrerUrl:Ljava/lang/String;

.field private mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

.field private mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

.field private mSearchUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/PageFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/activities/SearchFragment;
    .locals 2
    .parameter "query"
    .parameter "searchUrl"
    .parameter "referrerUrl"

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/finsky/activities/SearchFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SearchFragment;-><init>()V

    .line 48
    .local v0, fragment:Lcom/google/android/finsky/activities/SearchFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/SearchFragment;->setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 49
    const-string v1, "finsky.PageFragment.SearchFragment.query"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "finsky.PageFragment.SearchFragment.referrer"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "finsky.PageFragment.SearchFragment.searchUrl"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/activities/SearchFragment;->setArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method private setData()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DfeSearchBinder;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/fragments/DfeSearchBinder;->setData(Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->switchToData()V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindViews()V

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f04001e

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logListView()V
    .locals 6

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 157
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mReferrerUrl:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getBucketList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Bucket;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/google/android/finsky/analytics/Analytics;->logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    if-eqz p1, :cond_0

    .line 70
    const-string v0, "backend_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-interface {v0, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsWideSearch:I

    .line 75
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsTallSearch:I

    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->switchToLoading()V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->requestData()V

    .line 85
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mReferrerUrl:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindViews()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.referrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mReferrerUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.SearchFragment.searchUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/google/android/finsky/fragments/DfeSearchBinder;

    const v1, 0x7f04007f

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/fragments/DfeSearchBinder;-><init>(ILcom/google/android/finsky/api/model/DfeToc;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/PageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, result:Landroid/view/View;
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SearchFragment;->setData()V

    .line 98
    const v3, 0x7f08005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 99
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 101
    const v3, 0x7f080188

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, emptyResultsView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700f3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-object v2
.end method

.method public onDataChanged()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SearchFragment;->setData()V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->logListView()V

    .line 149
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/DfeSearchBinder;->onDestroyView()V

    .line 213
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onDestroyView()V

    .line 214
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/fragments/DfeSearchBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 115
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    const-string v0, "backend_id"

    iget v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method public rebindActionBar()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getBackendId()I

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    .line 177
    iget v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v3, "pub:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070231

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    const-string v6, "pub:"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, breadcrumb:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v2, v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    .line 190
    .end local v1           #breadcrumb:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    check-cast v2, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/MainActivity;->getCustomActionBar()Lcom/google/android/finsky/layout/CustomActionBar;

    move-result-object v0

    .line 191
    .local v0, actionBar:Lcom/google/android/finsky/layout/CustomActionBar;
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeSearch;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/finsky/layout/CustomActionBar;->updateSearchQuery(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    iget v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mBackendId:I

    invoke-interface {v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateCurrentBackendId(I)V

    goto :goto_0

    .line 186
    .end local v0           #actionBar:Lcom/google/android/finsky/layout/CustomActionBar;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07022c

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->updateBreadcrumb(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected rebindViews()V
    .locals 5

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindActionBar()V

    .line 165
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeSearch;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, currentPageUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchBinder:Lcom/google/android/finsky/fragments/DfeSearchBinder;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDataView:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsWideSearch:I

    iget v4, p0, Lcom/google/android/finsky/activities/SearchFragment;->mNumCellsTallSearch:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/finsky/fragments/DfeSearchBinder;->bind(Landroid/view/ViewGroup;IILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->logListView()V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SearchFragment;->rebindViews()V

    .line 128
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->clearTransientState()V

    .line 126
    invoke-super {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    goto :goto_0
.end method

.method protected requestData()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/google/android/finsky/api/model/DfeSearch;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SearchFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SearchFragment;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeSearch;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeSearch;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/SearchFragment;->mSearchData:Lcom/google/android/finsky/api/model/DfeSearch;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeSearch;->startLoadItems()V

    .line 203
    return-void
.end method
