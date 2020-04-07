open StaticReact;

type state;

/*
 * ChildContainer happens to admit that it wraps the supplied children
 * parameter in one layer of Div.
 */
type t('c) = (state, React.noAction) => ReactDOM.dom('c);

let render:
  (~txt: string=?, React.elem('childrenTree)) =>
  React.renderable(t('childrenTree));
