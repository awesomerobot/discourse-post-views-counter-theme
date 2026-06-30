import { apiInitializer } from "discourse/lib/api";
import PostViewsCounter from "../components/post-views-counter";

export default apiInitializer((api) => {
  api.registerValueTransformer(
    "post-meta-data-infos",
    ({ value: dag, context: { metaDataInfoKeys } }) => {
      dag.add("post-views-counter", PostViewsCounter, {
        before: metaDataInfoKeys.DATE,
      });
    }
  );
});
